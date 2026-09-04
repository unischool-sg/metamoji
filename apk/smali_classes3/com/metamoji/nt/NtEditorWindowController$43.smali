.class Lcom/metamoji/nt/NtEditorWindowController$43;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->isUserDrawing()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5279
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$43;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5282
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$43;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fgetm_userDrawingFlag(Lcom/metamoji/nt/NtEditorWindowController;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5279
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController$43;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
