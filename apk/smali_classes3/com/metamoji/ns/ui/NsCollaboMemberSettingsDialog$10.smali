.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"

# interfaces
.implements Lcom/metamoji/forSchool/ui/ScGroupListDialog$IScGroupListDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleManageGroupButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

.field final synthetic val$dlg:Lcom/metamoji/forSchool/ui/ScGroupListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V
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

    .line 1300
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->val$dlg:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)V
    .locals 4

    .line 1304
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->val$dlg:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupList:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    .line 1305
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1306
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1310
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1312
    check-cast v1, Ljava/util/Map;

    .line 1313
    const-string v3, "group-id"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1315
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1320
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1321
    :goto_1
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v3, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1322
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v3, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v3, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1324
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 1325
    iget-object v3, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1327
    iput-object v2, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    .line 1331
    :cond_3
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-static {v3, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->-$$Nest$msortUserForGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V

    .line 1332
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_4
    return-void
.end method
