.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;
.super Ljava/lang/Object;
.source "ScScoreListDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortOriginalDataArray()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

.field final synthetic val$useNickNameSort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 820
    const-class v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    return-void
.end method

.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Z)V
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

    .line 820
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->val$useNickNameSort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 820
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->compare(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/List;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-boolean v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    if-eqz v0, :cond_0

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :cond_0
    const/4 v0, 0x0

    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v2, v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return v0

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 906
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 908
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortDate(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 896
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 897
    const-string v0, "updatorName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 898
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 900
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortString(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 887
    :cond_3
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 888
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 890
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortDate(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 879
    :cond_4
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 880
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 882
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortNumber(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 844
    :cond_5
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v1, v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 845
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v1, v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 846
    const-string v1, "classNo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 847
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 848
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->isDecimal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_6

    .line 849
    move-object p1, v1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isDecimal(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 851
    invoke-static {v3, v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p1

    .line 852
    invoke-static {v1, v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    .line 853
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortNumber(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_6
    const/4 p1, -0x1

    return p1

    :cond_7
    if-eqz v4, :cond_8

    .line 859
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isDecimal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 864
    :cond_8
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->val$useNickNameSort:Z

    if-eqz v0, :cond_9

    .line 865
    const-string v0, "userName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 866
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 868
    :cond_9
    const-string v0, "loginName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 869
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortString(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :catch_0
    return v0
.end method
