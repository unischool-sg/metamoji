.class public final synthetic Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field public final synthetic f$1:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;->callBack$lambda$2(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
