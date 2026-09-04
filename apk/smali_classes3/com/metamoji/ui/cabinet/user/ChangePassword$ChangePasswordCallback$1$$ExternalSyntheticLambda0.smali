.class public final synthetic Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$1$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$1$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {v0, p1}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$1;->lambda$run$0(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
