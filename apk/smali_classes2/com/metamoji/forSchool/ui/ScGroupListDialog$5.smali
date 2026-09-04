.class Lcom/metamoji/forSchool/ui/ScGroupListDialog$5;
.super Ljava/lang/Object;
.source "ScGroupListDialog.java"

# interfaces
.implements Lcom/metamoji/forSchool/ui/ScGroupEditDialog$IScGroupEditDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScGroupListDialog;->handleItemClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

.field final synthetic val$itemData:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;)V
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

    .line 393
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$5;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$5;->val$itemData:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$5;->val$itemData:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    iput-object p1, v0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupName:Ljava/lang/String;

    .line 397
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$5;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->notifyDataSetChanged()V

    return-void
.end method
