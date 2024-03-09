/*
 *  Freeplane - mind map editor
 *  Copyright (C) 2009 Dimitry Polivaev
 *
 *  This file author is Dimitry Polivaev
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.freeplane.features.styles.mindmapmode;

import java.awt.event.ActionEvent;
import java.io.File;
import java.net.MalformedURLException;
import javax.swing.JFileChooser;

import org.freeplane.core.ui.AFreeplaneAction;
import org.freeplane.core.util.LogUtils;
import org.freeplane.core.resources.ResourceController;
import org.freeplane.features.map.MapModel;
import org.freeplane.features.mode.Controller;
import org.freeplane.features.mode.ModeController;
import org.freeplane.features.styles.MapStyle;
import org.freeplane.features.url.mindmapmode.MFileManager;
import org.freeplane.view.swing.features.filepreview.MindMapPreviewWithOptions;

/**
 * @author Dimitry Polivaev
 * Mar 12, 2009
 */
@SuppressWarnings("serial")
class ReplaceMapStylesLightAction extends AFreeplaneAction {
	ReplaceMapStylesLightAction() {
		super("ReplaceMapStylesLightAction");
	}

	@Override
	public void actionPerformed(final ActionEvent event) {
		final Controller controller = Controller.getCurrentController();
		final ModeController modeController = controller.getModeController();
        final String darkStyle = "/templates/kimim-light.mm";
        File file = new File (ResourceController.getResourceController().getResourceBaseDir(), darkStyle);
		if(! file.exists()){
			return;
		}
		try {
			final MapModel map = controller.getMap();
			MapStyle mapStyleController = MapStyle.getController(modeController);
			mapStyleController.replaceStyles(file, map, true, true);
        }
        catch (MalformedURLException e) {
	        LogUtils.severe(e);
        }

	}
}
