.class Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2$1;
.super Ljava/lang/Object;
.source "ChangePassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2$1;->this$2:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 0

    .line 394
    check-cast p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->dismiss()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 393
    sget-object p1, Lcom/metamoji/ui/cabinet/user/ChangePassword;->TAG:Ljava/lang/String;

    new-instance p2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2$1$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/NtDialog;->javaWithDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
