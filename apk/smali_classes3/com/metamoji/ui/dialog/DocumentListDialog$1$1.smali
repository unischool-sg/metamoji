.class Lcom/metamoji/ui/dialog/DocumentListDialog$1$1;
.super Ljava/lang/Object;
.source "DocumentListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentListDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/DocumentListDialog$1;

.field final synthetic val$delDicArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentListDialog$1;Ljava/util/ArrayList;)V
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

    .line 186
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1$1;->this$1:Lcom/metamoji/ui/dialog/DocumentListDialog$1;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1$1;->val$delDicArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1$1;->val$delDicArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 190
    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1$1;->this$1:Lcom/metamoji/ui/dialog/DocumentListDialog$1;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/DocumentListDialog$1;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
