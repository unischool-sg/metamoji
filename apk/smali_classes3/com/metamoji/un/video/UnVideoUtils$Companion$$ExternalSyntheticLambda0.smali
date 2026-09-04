.class public final synthetic Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/nt/NtEditorWindowController;

.field public final synthetic f$1:Lcom/metamoji/cm/CmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/cm/CmContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/cm/CmContext;

    invoke-static {v0, v1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->execVideoInsert$lambda$5(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
