.class public final synthetic Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cm/CmTaskManager;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cm/CmTaskManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/cm/CmTaskManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/nt/mv/MvDebug$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v0}, Lcom/metamoji/nt/mv/MvDebug$Companion;->resetSheet$lambda$2(Lcom/metamoji/cm/CmTaskManager;)V

    return-void
.end method
