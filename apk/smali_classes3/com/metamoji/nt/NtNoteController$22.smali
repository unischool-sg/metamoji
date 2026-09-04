.class Lcom/metamoji/nt/NtNoteController$22;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->collabolizeToOtherShareNoteFromCabinet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$finalShareTemplateDic:Ljava/util/Map;

.field final synthetic val$isCollabo:Z

.field final synthetic val$isDragDrop:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;ZLjava/util/Map;Z)V
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

    .line 3861
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$22;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtNoteController$22;->val$isCollabo:Z

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$22;->val$finalShareTemplateDic:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/metamoji/nt/NtNoteController$22;->val$isDragDrop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3864
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController$22;->val$isCollabo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3865
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewNormalDocument(Z)V

    return-void

    .line 3867
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$22;->val$finalShareTemplateDic:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$22;->val$isDragDrop:Z

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZLjava/util/Map;Z)V

    return-void
.end method
