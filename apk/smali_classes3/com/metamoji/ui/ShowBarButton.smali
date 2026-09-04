.class public Lcom/metamoji/ui/ShowBarButton;
.super Landroid/view/View;
.source "ShowBarButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private _enabled:Z

.field _layoutheight:I

.field _layoutwidth:I

.field private _noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x28

    .line 25
    iput p1, p0, Lcom/metamoji/ui/ShowBarButton;->_layoutwidth:I

    .line 26
    iput p1, p0, Lcom/metamoji/ui/ShowBarButton;->_layoutheight:I

    .line 53
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object p1, p0, Lcom/metamoji/ui/ShowBarButton;->_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/metamoji/ui/ShowBarButton;->_enabled:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ShowBarButton;->setClickable(Z)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ShowBarButton;->setFocusable(Z)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 32
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/metamoji/ui/ShowBarButton;->_layoutwidth:I

    .line 33
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/ShowBarButton;->_layoutheight:I

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/ui/ShowBarButton;->updateImage()V

    .line 36
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/ShowBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 0

    .line 106
    iput-boolean p2, p0, Lcom/metamoji/ui/ShowBarButton;->_enabled:Z

    if-eqz p2, :cond_1

    .line 108
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/ShowBarButton;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V

    :cond_0
    return-void

    .line 117
    :cond_1
    sget-object p2, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/ShowBarButton;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V

    return-void
.end method

.method public notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V
    .locals 1

    .line 56
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    if-ne p1, v0, :cond_0

    .line 57
    invoke-static {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->valueOf(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    .line 58
    sget-object p2, Lcom/metamoji/ui/ShowBarButton$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    .line 68
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 71
    :pswitch_0
    iget-object p2, p0, Lcom/metamoji/ui/ShowBarButton;->_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p2, p1, :cond_1

    .line 72
    iput-object p1, p0, Lcom/metamoji/ui/ShowBarButton;->_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/ui/ShowBarButton;->updateImage()V

    return-void

    .line 77
    :cond_0
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN2:Lcom/metamoji/nt/NtCommand;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_PEN_SETTINGS_CHANGED:Lcom/metamoji/nt/NtCommand;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 80
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/ShowBarButton;->updateImage()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 48
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FULLSCREEN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v2, 0x0

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 41
    iget p1, p0, Lcom/metamoji/ui/ShowBarButton;->_layoutwidth:I

    iget p2, p0, Lcom/metamoji/ui/ShowBarButton;->_layoutheight:I

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/ShowBarButton;->setMeasuredDimension(II)V

    return-void
.end method

.method updateImage()V
    .locals 6

    const/high16 v0, 0x42200000    # 40.0f

    .line 85
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 87
    iget-object v1, p0, Lcom/metamoji/ui/ShowBarButton;->_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2}, Lcom/metamoji/ui/HoverCm;->getImage(Lcom/metamoji/nt/NtNoteController$NoteMode;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x79

    const/16 v3, 0x80

    const/16 v4, 0xff

    const/16 v5, 0x75

    .line 88
    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v1, v2}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->fullscreen_btn_base:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 90
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->fullscreen_btn_base_p:I

    invoke-static {v3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 91
    invoke-static {v2, v1, v0, v0}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 92
    invoke-static {v3, v1, v0, v0}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 96
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 98
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, -0x10100a7

    .line 99
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v1, 0x10100a7

    .line 100
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ShowBarButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
