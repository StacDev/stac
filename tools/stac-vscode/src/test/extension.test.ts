import * as assert from 'assert';
import { COMMANDS } from '../core/constants';

suite('Extension Test Suite', () => {
	test('registers expected command ids', () => {
		assert.ok(COMMANDS.wrapWithStacContainer);
		assert.ok(COMMANDS.wrapWithStacWidget);
		assert.ok(COMMANDS.regenerateCatalog);
		assert.ok(COMMANDS.previewOpen);
		assert.ok(COMMANDS.previewRefresh);
		assert.ok(COMMANDS.previewStop);
		assert.ok(COMMANDS.previewSelectScreen);
	});
});
