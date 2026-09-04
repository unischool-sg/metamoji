.class Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2$1;
.super Ljava/lang/Object;
.source "ChangePassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2$1;->this$2:Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 1

    .line 336
    check-cast p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;

    const/4 v0, 0x1

    .line 337
    invoke-static {p0, v0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->-$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/ChangePassword;Z)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 335
    sget-object p1, Lcom/metamoji/ui/cabinet/user/ChangePassword;->TAG:Ljava/lang/String;

    new-instance p2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2$1$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/NtDialog;->javaWithDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
