.class Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$2;
.super Ljava/lang/Object;
.source "PoisonousMushroomCreatorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;

.field final synthetic val$options:Lcom/metamoji/cm/CmContext;

.field final synthetic val$window:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
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

    .line 195
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$2;->this$0:Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$2;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$2;->val$options:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$2;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_EXPORT_POISONOUS_MUSHROOM_EXEC:Lcom/metamoji/nt/NtCommand;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$2;->val$options:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
