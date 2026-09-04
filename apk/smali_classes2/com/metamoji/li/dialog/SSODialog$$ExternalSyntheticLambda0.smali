.class public final synthetic Lcom/metamoji/li/dialog/SSODialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/dialog/SSODialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/dialog/SSODialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/dialog/SSODialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/dialog/SSODialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/dialog/SSODialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/dialog/SSODialog;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    invoke-static {v0, p1}, Lcom/metamoji/li/dialog/SSODialog;->onLoginResult$lambda$1(Lcom/metamoji/li/dialog/SSODialog;Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p1

    return-object p1
.end method
