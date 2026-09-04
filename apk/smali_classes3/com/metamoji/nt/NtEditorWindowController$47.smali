.class Lcom/metamoji/nt/NtEditorWindowController$47;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->openNoteInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$driveID:Ljava/lang/String;

.field final synthetic val$pageID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 5599
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$47;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$47;->val$driveID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$47;->val$docID:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowController$47;->val$pageID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 5609
    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->FromHistory:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 5647
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$47;->val$driveID:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$47;->val$docID:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$47;->val$pageID:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;)V

    return-void
.end method
