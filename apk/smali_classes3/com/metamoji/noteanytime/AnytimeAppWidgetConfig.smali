.class public Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;
.super Landroidx/fragment/app/FragmentActivity;
.source "AnytimeAppWidgetConfig.java"


# instance fields
.field private _appWidgetId:I


# direct methods
.method static bridge synthetic -$$Nest$monCancel(Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->onCancel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDone(Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->onDone()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->_appWidgetId:I

    return-void
.end method

.method private onCancel()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->finish()V

    return-void
.end method

.method private onDone()V
    .locals 3

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->_appWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->setResult(ILandroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget p1, Lcom/metamoji/noteanytime/R$layout;->appwidget_config:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->setContentView(I)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->setResult(I)V

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->_appWidgetId:I

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->finish()V

    return-void

    .line 32
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->dlg_title:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 33
    const-string v0, "Note Anytime \u30a6\u30a3\u30b8\u30a7\u30c3\u30c8\u306e\u8a2d\u5b9a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    sget p1, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 37
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Cancel_J:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 38
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 39
    new-instance v0, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig$1;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig$1;-><init>(Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget p1, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 48
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 49
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 50
    new-instance v0, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig$2;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig$2;-><init>(Lcom/metamoji/noteanytime/AnytimeAppWidgetConfig;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
