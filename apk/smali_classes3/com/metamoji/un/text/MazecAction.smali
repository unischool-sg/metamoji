.class public Lcom/metamoji/un/text/MazecAction;
.super Ljava/lang/Object;
.source "MazecAction.java"


# instance fields
.field _view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/metamoji/un/text/MazecAction;->_view:Landroid/view/View;

    return-void
.end method

.method private static sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/un/text/MazecAction;->_view:Landroid/view/View;

    invoke-static {v0, p1, p2}, Lcom/metamoji/un/text/MazecAction;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static sendPenInfo(Landroid/view/View;)V
    .locals 7

    .line 73
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v1

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 78
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v6, "shapepen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    const-string/jumbo v5, "standard"

    iput-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_0
    iget-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v6, "shapemarkerpen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    const-string v5, "markerpen"

    iput-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 87
    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const-string v3, "MazecPenPaletteCurrentTab"

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v3, "pen_set"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    const-string v2, "cur_pen_index"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v0, "com.metamoji.mazecapi.action.set_properties"

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/text/MazecAction;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public convertStrokes(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokesToNA(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)Lcom/metamoji/mazecapi/Strokes;

    move-result-object p1

    .line 64
    new-instance v1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    invoke-direct {v1, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(Lcom/metamoji/mazecapi/Strokes;)V

    const-string/jumbo p1, "stroke_data"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    const-string p1, "com.metamoji.mazecapi.action.convert_strokes"

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/MazecAction;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyCursorChanged(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokesToNA(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)Lcom/metamoji/mazecapi/Strokes;

    move-result-object p1

    .line 106
    new-instance v1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    invoke-direct {v1, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(Lcom/metamoji/mazecapi/Strokes;)V

    const-string/jumbo p1, "stroke_data"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    const-string p1, "com.metamoji.mazecapi.notify.cursor_changed"

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/MazecAction;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyHandwritingBackgroundColorChanged(I)V
    .locals 2

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    const-string v1, "back_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string p1, "com.metamoji.mazecapi.action.set_properties"

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/MazecAction;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPenInfo()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/un/text/MazecAction;->_view:Landroid/view/View;

    invoke-static {v0}, Lcom/metamoji/un/text/MazecAction;->sendPenInfo(Landroid/view/View;)V

    return-void
.end method

.method public setStrokeReedit(Z)V
    .locals 2

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v1, "reediting"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    const-string p1, "com.metamoji.mazecapi.action.reediting"

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/MazecAction;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setStrokes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokesListToNA(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 54
    new-instance v1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    invoke-direct {v1, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(Ljava/util/List;)V

    const-string/jumbo p1, "stroke_data"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    const-string p1, "com.metamoji.mazecapi.action.set_strokes"

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/MazecAction;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
