.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleAddMemberButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 735
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    .line 740
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 741
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v2, v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 742
    iget-object v3, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    const-string v3, "TEACHER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_8

    .line 747
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 748
    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 749
    const-string v2, "nickname"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 752
    const-string v2, "classNumber"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_4

    .line 754
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-static {v2, v4}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->-$$Nest$mgetClassNumber(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v11, v2

    .line 759
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-static {v2, v4}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->-$$Nest$mgetLoginName(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 762
    const-string v2, "isTeacher"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 765
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 772
    :cond_6
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move v7, p2

    goto :goto_2

    :cond_7
    const/4 v0, 0x2

    move v7, v0

    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemByUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method
