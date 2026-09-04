.class Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;
.super Ljava/lang/Object;
.source "ScGroupListDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->createGroupListCtrl(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

.field final synthetic val$itemData:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;)V
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

    .line 129
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;->this$1:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;->val$itemData:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;->this$1:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    if-eqz p2, :cond_0

    .line 133
    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_selectedItems:Ljava/util/List;

    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;->val$itemData:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_selectedItems:Ljava/util/List;

    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;->val$itemData:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    :goto_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;->this$1:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->-$$Nest$mhandleSelectionChanged(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    return-void
.end method
