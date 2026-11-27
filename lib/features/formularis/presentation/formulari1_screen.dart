import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormValidationScreen extends StatefulWidget {
  const FormValidationScreen({super.key});

  @override
  State<FormValidationScreen> createState() => _FormValidationScreenState();
}

class _FormValidationScreenState extends State<FormValidationScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _obscure = true;
  static const _regions = ['Barcelona', 'Girona', 'Lleida', 'Tarragona'];


  String _savedName = '';
  String _savedEmail = '';
  String _savedNotes = '';
  String _savedContrasenya = '';
  String _savedCodi = '';
  String _savedRegio = '';
  String _savedCondicions = '';

  String _savedSummary = '';

  void _submit() {
    final form = _formKey.currentState!;
    if (!form.validate()) return;
    form.save();
    setState(() {
      _savedSummary =
          ' \nNom: ${_savedName.trim()} '
          '\nEmail: ${_savedEmail.trim()}'
          '${_savedNotes.trim().isNotEmpty ? '\nNotes: ${_savedNotes.trim()}' : ''}'
          '${_savedRegio.isNotEmpty ? '\nRegió: $_savedRegio' : ''}'
          '${_savedContrasenya.isNotEmpty ? '\nContrasenya: $_savedContrasenya' : ''}'
          '${_savedCodi.isNotEmpty ? '\nCodi: $_savedCodi' : ''}'
          '${_savedCondicions.isNotEmpty ? '\nCondició: $_savedCondicions' : ''}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form i validadors')),
      body: Form(
        key: _formKey,
        //autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'NomZZZZ',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
              validator: (v) {
                if (v == null || v.trim().isEmpty) {
                  return 'El nom és obligatori.';
                }
                if (v.trim().length < 2) {
                  return 'Massa curt (mín. 2 caràcters).';
                }
                return null;
              },
              onSaved: (v) => _savedName = v ?? '',
            ),
            const SizedBox(height: 12),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Correu',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (v) {
                if (v == null || v.trim().isEmpty) {
                  return 'L’email és obligatori.';
                }
                final ok = RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(v.trim());
                if (!ok) return 'Format d’email no vàlid.';
                return null;
              },
              onSaved: (v) => _savedEmail = v ?? '',
            ),

            const SizedBox(height: 12),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Notes (opcional)',
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
              maxLines: 3,
              validator: (v) {
                if (v != null && v.length > 120) {
                  return 'Màxim 120 caràcters.';
                }
                return null;
              },
              onSaved: (v) => _savedNotes = v ?? '',
            ),

            const SizedBox(height: 16),
            TextFormField(
              obscureText: _obscure,
              decoration: InputDecoration(
                labelText: 'Contrasenya',
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  tooltip: _obscure ? 'Mostrar' : 'Amagar',
                  onPressed: () => setState(() => _obscure = !_obscure),
                  icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              validator: (v) {
                if (v == null || (v != null && (v.length < 8 || v.length > 30))) {
                  return 'Entre 8 i 30 caràcters.';
                }
                return null;
              },
              onSaved: (v) => _savedContrasenya = v ?? '',  
            ),

            const SizedBox(height: 12),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly, //import 'package:flutter/services.dart';
              ],
              maxLength: 6,
              decoration: const InputDecoration(
                labelText: 'Codi numèric (6 dígits)',
                border: OutlineInputBorder(),
                prefixText: '# ',
              ),
              validator: (v) {
                if (v != null && v.length < 6) {
                  return 'Cal introduir 6 dígits.';
                }
                return null;
              },
              onSaved: (v) => _savedCodi = v ?? '',
              
            ),


           const SizedBox(height: 16),
            FormField<String>(
              initialValue: null, // o bé "Tarragona" o bé _regions[0] o null si vols que no hi hagi cap valor inicial
              validator: (v) => v == null ? 'Tria una regió.' : null,
              builder: (state) {
                return InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Regió',
                    border: const OutlineInputBorder(),
                    errorText: state.errorText,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: const Text('Selecciona'),
                      value: state.value,
                      items: [
                        for (final r in _regions)
                          DropdownMenuItem(value: r, child: Text(r)),
                      ],
                      onChanged: state.didChange,
                    ),
                  ),
                );
              },
              onSaved: (v) => _savedRegio = v ?? '',
            ),


            const SizedBox(height: 12),
            FormField<bool>(
              initialValue: false,
              validator: (v) =>
                  v == true ? null : 'Cal confirmar les condicions.',
              builder: (state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckboxListTile(
                      title: const Text('Accepto el tractament de dades'),
                      value: state.value ?? false,
                      onChanged: (b) => state.didChange(b ?? false),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    if (state.hasError)
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          state.errorText!,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                            fontSize: 12,
                          ),
                        ),
                      ),
                  ],
                );
              },
              onSaved: (v) => _savedCondicions = v == true ? 'Sí' : 'No',
            ),

            const SizedBox(height: 20),
            FilledButton(
              onPressed: _submit,
              child: const Text('Validar i desar (onSaved)'),
            ),


            if (_savedSummary.isNotEmpty) ...[
              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  title: const Text('Últim guardat vàlid'),
                  subtitle: Text(_savedSummary),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
