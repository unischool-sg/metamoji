.class Lcom/metamoji/nt/NtEditorWindowController$34$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$34;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$34;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$34;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4346
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$34$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4349
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$34$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$34;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController$34;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    return-void
.end method
