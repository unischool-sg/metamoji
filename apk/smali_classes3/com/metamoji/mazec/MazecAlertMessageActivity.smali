.class public Lcom/metamoji/mazec/MazecAlertMessageActivity;
.super Landroid/app/Activity;
.source "MazecAlertMessageActivity.java"


# static fields
.field public static KEY_MARKET_URI:Ljava/lang/String; = "market-uri"

.field public static KEY_MSG_ID:Ljava/lang/String; = "message-id"

.field public static KEY_SWITCH_IME:Ljava/lang/String; = "switch-ime"


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/metamoji/mazec/MazecAlertMessageActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecAlertMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 25
    sget-object v0, Lcom/metamoji/mazec/MazecAlertMessageActivity;->KEY_MSG_ID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 26
    sget-object v2, Lcom/metamoji/mazec/MazecAlertMessageActivity;->KEY_MARKET_URI:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    sget-object v3, Lcom/metamoji/mazec/MazecAlertMessageActivity;->KEY_SWITCH_IME:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 29
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v2, :cond_0

    .line 32
    const-string/jumbo v1, "string.dialog_button_to_android_market"

    .line 33
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/metamoji/mazec/MazecAlertMessageActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/metamoji/mazec/MazecAlertMessageActivity$1;-><init>(Lcom/metamoji/mazec/MazecAlertMessageActivity;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    .line 46
    const-string/jumbo p1, "string.dialog_button_switch_ime"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    new-instance v2, Lcom/metamoji/mazec/MazecAlertMessageActivity$2;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/MazecAlertMessageActivity$2;-><init>(Lcom/metamoji/mazec/MazecAlertMessageActivity;)V

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-gtz v1, :cond_2

    .line 58
    const-string/jumbo p1, "string.dialog_button_ok"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 65
    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 66
    new-instance v0, Lcom/metamoji/mazec/MazecAlertMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecAlertMessageActivity$3;-><init>(Lcom/metamoji/mazec/MazecAlertMessageActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 83
    iget-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/metamoji/mazec/MazecAlertMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecAlertMessageActivity$4;-><init>(Lcom/metamoji/mazec/MazecAlertMessageActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 90
    iget-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
