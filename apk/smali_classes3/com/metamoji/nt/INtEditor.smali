.class public interface abstract Lcom/metamoji/nt/INtEditor;
.super Ljava/lang/Object;
.source "INtEditor.java"


# static fields
.field public static final SHOWERROR_CANCELPASSWORD:I = 0x4

.field public static final SHOWERROR_CANCELSECUREROOMPASSWORD:I = 0x5

.field public static final SHOWERROR_DM:I = 0x2

.field public static final SHOWERROR_ERRORINFO:I = 0x3

.field public static final SHOWERROR_HASEXPIREDATEPROTECTED:I = 0x6

.field public static final SHOWERROR_LOADNOTE:I = 0x1


# virtual methods
.method public abstract GetJumpLocationView()Landroid/widget/RelativeLayout;
.end method

.method public abstract addPartsFromLibrary(Lcom/metamoji/cm/CmContext;)V
.end method

.method public abstract addShape(Lcom/metamoji/cm/CmContext;)V
.end method

.method public abstract addWebPage()V
.end method

.method public abstract attachViewForSoftInput(Landroid/view/View;)V
.end method

.method public abstract cancelSetTextUnitLocationView()V
.end method

.method public abstract changeToJumpList()V
.end method

.method public abstract changeToPageList()V
.end method

.method public abstract closeCollaboModeBar()V
.end method

.method public abstract closeDetailWindow()V
.end method

.method public abstract closeDetailWindowAndEnsurePenMode()V
.end method

.method public abstract closeDocument()V
.end method

.method public abstract closeSetTextUnitLocationView()V
.end method

.method public abstract collaboModeChanged(Z)V
.end method

.method public abstract containsInCollaboModeBar(Landroid/graphics/PointF;)Z
.end method

.method public abstract containsInEditorBars(Landroid/graphics/PointF;)Z
.end method

.method public abstract detachViewForSoftInput(Landroid/view/View;)V
.end method

.method public abstract editDocument(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/PBE;",
            "Lcom/metamoji/nt/NtEditorWindowController$EditOperation;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract editLayerInfoResetMargin()V
.end method

.method public abstract errorInLoadingNote(Ljava/lang/Throwable;)V
.end method

.method public abstract errorInLoadingNote(Ljava/lang/Throwable;I)V
.end method

.method public abstract getActivity()Landroidx/fragment/app/FragmentActivity;
.end method

.method public abstract getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
.end method

.method public abstract getDetailWindow()Lcom/metamoji/ui/DetailWindow;
.end method

.method public abstract getDisplaySize()Lcom/metamoji/cm/SizeF;
.end method

.method public abstract getEditLayerInfoView()Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;
.end method

.method public abstract getFxmanager()Lcom/metamoji/ui/flexible/FxManager;
.end method

.method public abstract getHover()Lcom/metamoji/ui/CustomHoverSelectorView;
.end method

.method public abstract getInputViewForTLE()Landroid/view/View;
.end method

.method public abstract getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/nt/itemlist/NtJumpList<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getJumpListViewStatus()I
.end method

.method public abstract getMenu()Lcom/metamoji/ui/CustomMenuView;
.end method

.method public abstract getMruItemMenu()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNameTipInfoView()Lcom/metamoji/nt/NtNameTipInfoView;
.end method

.method public abstract getOfflineEditModeInfoView()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;
.end method

.method public abstract getOwnerView()Lcom/metamoji/nt/INtOwnerView;
.end method

.method public abstract getPageListViewStatus()I
.end method

.method public abstract getPersonalModeInfoView()Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;
.end method

.method public abstract getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;
.end method

.method public abstract getPlaylist()Lcom/metamoji/media/voice/ui/VcPlaylist;
.end method

.method public abstract getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;
.end method

.method public abstract getShowDetailWindowButton()Landroid/view/View;
.end method

.method public abstract getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;
.end method

.method public abstract getTextUnitInputStyleBarVisible()Z
.end method

.method public abstract getTopAppBarHeight()I
.end method

.method public abstract getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;
.end method

.method public abstract getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;
.end method

.method public abstract getVideoPlayerLayer()Lcom/metamoji/un/video/UnVideoPlayerLayer;
.end method

.method public abstract getViewport()Lcom/metamoji/df/sprite/Viewport;
.end method

.method public abstract hideBottomBar()V
.end method

.method public abstract hideEditLayerInfo()V
.end method

.method public abstract hideEditorBars()V
.end method

.method public abstract hideOfflineEditModeInfo()V
.end method

.method public abstract hidePersonalModeInfo()V
.end method

.method public abstract hidePlayerBar()V
.end method

.method public abstract hidePlaylist()V
.end method

.method public abstract hideWristGuard()V
.end method

.method public abstract isClosing()Z
.end method

.method public abstract isInstance(Ljava/lang/Object;)Z
.end method

.method public abstract isPageMode()Z
.end method

.method public abstract isShowEditorBars()Z
.end method

.method public abstract isShowPlayerBar()Ljava/lang/Boolean;
.end method

.method public abstract isShowPlaylist()Ljava/lang/Boolean;
.end method

.method public abstract isShowTextUnitLocationView()Z
.end method

.method public abstract isSoftInputVisible()Z
.end method

.method public abstract notifyEditModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;)V
.end method

.method public abstract notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
.end method

.method public abstract notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
.end method

.method public abstract notifyTitleUpdated(Ljava/lang/String;)V
.end method

.method public abstract offlineEditModeInfoResetMargin()V
.end method

.method public abstract openCollaboModeBar()V
.end method

.method public abstract performLinkJumpBackward()V
.end method

.method public abstract performLinkJumpForward()V
.end method

.method public abstract personalModeInfoResetMargin()V
.end method

.method public abstract prepareWebPage(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract prevNextButtonEnabled(Z)V
.end method

.method public abstract qrCodeReader(Z)V
.end method

.method public abstract refreshDetailWindow()V
.end method

.method public abstract resetNoteLoadingError()V
.end method

.method public abstract selectDocThumbnailImage()V
.end method

.method public abstract selectImageForPaperBackground()V
.end method

.method public abstract setJumpListViewStatus(I)V
.end method

.method public abstract setMinPaintInterval(Lcom/metamoji/nt/NtUserDefaults;Lcom/metamoji/df/sprite/Viewport;)V
.end method

.method public abstract setNameTipInfoViewVisibility(I)V
.end method

.method public abstract setOnShowHideSoftInputListener(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;)V
.end method

.method public abstract setPageListViewStatus(I)V
.end method

.method public abstract setSoftInputDetectable(Z)V
.end method

.method public abstract setStopUpdateListLabel(Z)V
.end method

.method public abstract setTextEditUserInfoViewVisibility(I)V
.end method

.method public abstract setTextUnitInputStyleBarVisible(Z)V
.end method

.method public abstract setUnitEditUserInfoViewVisibility(I)V
.end method

.method public abstract showBottomBar()V
.end method

.method public abstract showDebugMenu()V
.end method

.method public abstract showEditLayerInfo(Ljava/lang/String;I)V
.end method

.method public abstract showEditorBars()V
.end method

.method public abstract showOfflineEditModeInfo(Ljava/lang/String;)V
.end method

.method public abstract showPersonalModeInfo(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract showPlayerBar(Z)V
.end method

.method public abstract showPlaylist()V
.end method

.method public abstract showSetTextUnitLocationView(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V
.end method

.method public abstract showStatusBar()V
.end method

.method public abstract updateButtonStatus()V
.end method

.method public abstract updateDetailAndViewModeButton()V
.end method

.method public abstract updateDocumentEditor(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
.end method

.method public abstract updateJumpLabel()V
.end method

.method public abstract updatePageButtonInfoIcon()V
.end method

.method public abstract updatePageButtonInfoIcon(I)V
.end method

.method public abstract updatePageLabel()V
.end method

.method public abstract updatePageListInfoIcon(Ljava/lang/String;)V
.end method

.method public abstract updatePageListSchoolPageTypeIcon()V
.end method

.method public abstract updatePageListSchoolPageTypeIcon(Ljava/lang/String;)V
.end method

.method public abstract updatePageNavigationButtons()V
.end method

.method public abstract updatePageNavigationButtonsByShowSoftInput(Z)V
.end method

.method public abstract updatePersonalModeInfoPosition()V
.end method

.method public abstract updatePresenterViewingPageIcon(Ljava/lang/String;)V
.end method

.method public abstract updateScoreInfoViewPosition()V
.end method

.method public abstract updateSearchTextBarPosition()V
.end method

.method public abstract updateSharePallet(Z)V
.end method

.method public abstract updateWristGuardVisible()V
.end method
