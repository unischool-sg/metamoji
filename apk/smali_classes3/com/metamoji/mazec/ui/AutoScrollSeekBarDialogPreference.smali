.class public Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;
.super Landroid/preference/DialogPreference;
.source "AutoScrollSeekBarDialogPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mCurVal:I

.field private mCurValText:Landroid/widget/TextView;

.field private final mMax:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x3e8

    .line 18
    iput v0, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mMax:I

    const/16 v0, 0x258

    .line 19
    iput v0, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurVal:I

    .line 27
    const-string v0, "layout.auto_scroll_seekbar_pref_dialog"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->setDialogLayoutResource(I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->initDialog(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x3e8

    .line 18
    iput p3, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mMax:I

    const/16 p3, 0x258

    .line 19
    iput p3, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurVal:I

    .line 38
    const-string p3, "layout.auto_scroll_seekbar_pref_dialog"

    invoke-static {p3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->setDialogLayoutResource(I)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->initDialog(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initDialog(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 56
    new-instance v0, Lcom/metamoji/mazec/MazecPreferences;

    invoke-direct {v0}, Lcom/metamoji/mazec/MazecPreferences;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getAutoScrollDelay()I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurVal:I

    .line 57
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurVal:I

    .line 59
    const-string v0, "id.tv_curval"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurValText:Landroid/widget/TextView;

    .line 60
    iget v1, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurVal:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const-string v0, "id.seekbar"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 63
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    iget-object p1, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 65
    iget-object p1, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurVal:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    iget v0, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurVal:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->persistInt(I)Z

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 95
    iput p2, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurVal:I

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 97
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/metamoji/mazec/ui/AutoScrollSeekBarDialogPreference;->mCurValText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
