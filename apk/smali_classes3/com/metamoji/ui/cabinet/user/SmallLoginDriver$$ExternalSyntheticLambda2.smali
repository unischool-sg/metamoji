.class public final synthetic Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

.field public final synthetic f$1:Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->tryGoogleLogin$lambda$6$lambda$5(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;)V

    return-void
.end method
