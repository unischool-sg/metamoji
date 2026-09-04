.class Lcom/metamoji/nt/NtEditorWindowController$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->showLoadErrorMessage(Ljava/lang/Throwable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$errorMessageTitleID:I

.field final synthetic val$logText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 296
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$1;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$1;->val$e:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$1;->val$logText:Ljava/lang/String;

    iput p4, p0, Lcom/metamoji/nt/NtEditorWindowController$1;->val$errorMessageTitleID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$1;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$1;->val$e:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$1;->val$logText:Ljava/lang/String;

    iget v3, p0, Lcom/metamoji/nt/NtEditorWindowController$1;->val$errorMessageTitleID:I

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$mshowLoadErrorMessage(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-void
.end method
