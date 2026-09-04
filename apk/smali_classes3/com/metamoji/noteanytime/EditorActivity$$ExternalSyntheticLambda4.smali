.class public final synthetic Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final action(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->lambda$parseConnectAfterAction$3(Ljava/lang/Runnable;Z)V

    return-void
.end method
