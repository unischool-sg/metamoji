.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1013
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1017
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mcurrentPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitorList;ZZ)V

    .line 1019
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->val$finalVisibleMonitorViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 1021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1022
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v4

    .line 1024
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v4

    if-nez v4, :cond_5

    .line 1025
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v4, v4, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mgetSchoolPageType(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)I

    move-result v4

    if-eq v4, v2, :cond_2

    const/4 v2, 0x2

    if-eq v4, v2, :cond_2

    move v2, v1

    .line 1048
    :goto_0
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v4, v4, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v4

    .line 1059
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    if-ge v2, v4, :cond_1

    .line 1049
    iget-object v4, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1051
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 1052
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v6, v6, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->val$finalVisibleMonitorViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1053
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1055
    :cond_0
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1059
    :cond_1
    iget-object v2, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->clear()V

    .line 1060
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->val$finalVisibleMonitorViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1061
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1062
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v5, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v2, v1

    .line 1028
    :goto_3
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v4, v4, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v4

    .line 1039
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    if-ge v2, v4, :cond_4

    .line 1029
    iget-object v4, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1031
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v5

    .line 1032
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v6, v6, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->val$finalVisibleMonitorViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1033
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1035
    :cond_3
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1039
    :cond_4
    iget-object v2, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->clear()V

    .line 1040
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->val$finalVisibleMonitorViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1041
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1042
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v5, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    move v2, v1

    .line 1068
    :goto_6
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v4, v4, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v4

    .line 1079
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    if-ge v2, v4, :cond_7

    .line 1069
    iget-object v4, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1071
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 1072
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v6, v6, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->val$finalVisibleMonitorViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1073
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1075
    :cond_6
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1079
    :cond_7
    iget-object v2, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->clear()V

    .line 1080
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->val$finalVisibleMonitorViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1081
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1082
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v5, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->add(Ljava/lang/Object;)V

    goto :goto_8

    .line 1086
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1087
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_hideMonitorViewArray(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1089
    :cond_9
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mclearSelectedMonitorViews(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 1093
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mrecalcItemSize(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 1095
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mupdateMonitorSizeWithAnimation(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 1098
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mupdateShowHideBtnVisible(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 1101
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mupdateGuidanceLabel(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 1104
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$msaveMonitoringStateForList(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 1106
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->notifyDataSetChanged()V

    .line 1109
    :cond_a
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mupdateMonitorSize(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V

    return-void
.end method
