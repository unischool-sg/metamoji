.class Lcom/metamoji/ui/dialog/DocumentSettings2$13;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

.field final synthetic val$context:Lcom/metamoji/cm/CmContext;

.field final synthetic val$editor:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 782
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$13;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$13;->val$editor:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$13;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$13;->val$editor:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2_DONE:Lcom/metamoji/nt/NtCommand;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$13;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
