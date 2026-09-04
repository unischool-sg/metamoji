.class Lcom/metamoji/ui/dialog/DocumentListDialog$1$2;
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


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentListDialog$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1$2;->this$1:Lcom/metamoji/ui/dialog/DocumentListDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1$2;->this$1:Lcom/metamoji/ui/dialog/DocumentListDialog$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentListDialog$1;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
