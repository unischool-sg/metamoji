.class Lcom/metamoji/noteanytime/EditorActivity$15;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->editDocument(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1598
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$15;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1598
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity$15;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1601
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity$15;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1602
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$15;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    const-string v2, "editor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const/4 v0, 0x0

    return-object v0
.end method
