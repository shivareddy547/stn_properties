import { application } from "./application"

// Import all Stimulus controllers
const controllers = import.meta.globEager('./**/*_controller.js')

for (const path in controllers) {
    const controller = controllers[path]
    const name = path
        .replace('./', '')
        .replace('_controller.js', '')
        .replace(/\//g, '--')

    application.register(name, controller.default)
}
