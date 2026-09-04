.class public final synthetic Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ns/INsCollaboAction;

.field public final synthetic f$1:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ns/INsCollaboAction;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/ns/INsCollaboAction;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda4;->f$1:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final action(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/ns/INsCollaboAction;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda4;->f$1:Ljava/util/Date;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ns/NsCollaboCommand;->lambda$createRestoreDocumentFromCollaboDocument$4(Lcom/metamoji/ns/INsCollaboAction;Ljava/util/Date;Z)V

    return-void
.end method
