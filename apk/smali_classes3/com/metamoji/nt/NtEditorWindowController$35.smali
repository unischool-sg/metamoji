.class Lcom/metamoji/nt/NtEditorWindowController$35;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->handleConvertText(Lcom/metamoji/tle/TextLineExtractType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$type:Lcom/metamoji/tle/TextLineExtractType;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/tle/TextLineExtractType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4600
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$35;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$35;->val$type:Lcom/metamoji/tle/TextLineExtractType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4603
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$35;->val$type:Lcom/metamoji/tle/TextLineExtractType;

    invoke-static {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->textLineExtract(Lcom/metamoji/tle/TextLineExtractType;)V

    return-void
.end method
