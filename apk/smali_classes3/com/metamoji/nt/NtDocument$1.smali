.class Lcom/metamoji/nt/NtDocument$1;
.super Ljava/lang/Object;
.source "NtDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocument;->init(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;ILcom/metamoji/df/controller/ControllerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 782
    iput-object p1, p0, Lcom/metamoji/nt/NtDocument$1;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$1;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument;->-$$Nest$fget_windowController(Lcom/metamoji/nt/NtDocument;)Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->openCollaboModeBar()V

    return-void
.end method
