.class Lcom/metamoji/ns/NsCollaboCommand$3;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZLjava/util/Map;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$deleteCurrentDoc:Z

.field final synthetic val$isDragDrop:Z

.field final synthetic val$shareTemplateDic:Ljava/util/Map;

.field final synthetic val$submitByStudent:Z


# direct methods
.method constructor <init>(ZLjava/util/Map;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$deleteCurrentDoc:Z

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$shareTemplateDic:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$submitByStudent:Z

    iput-boolean p4, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$isDragDrop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 209
    iget-boolean p1, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$deleteCurrentDoc:Z

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$shareTemplateDic:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$submitByStudent:Z

    iget-boolean v2, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$isDragDrop:Z

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/ns/NsCollaboCommand;->createRoom(ZLjava/util/Map;ZZ)V

    return-void

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$3;->val$shareTemplateDic:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 213
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->closeDocumentWithOriginalNoteDescard()V

    :cond_1
    return-void
.end method
