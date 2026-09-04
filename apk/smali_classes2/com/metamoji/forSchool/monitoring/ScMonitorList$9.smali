.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1205
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 1208
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object p1

    .line 1209
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result p2

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0x4c

    const/4 v3, 0x1

    if-nez p2, :cond_0

    .line 1210
    invoke-virtual {p1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->setDisplayMonitorType(I)V

    .line 1213
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    move-result-object p2

    const/16 v4, 0x60

    invoke-static {v0, v2, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1215
    :cond_0
    invoke-virtual {p1, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->setDisplayMonitorType(I)V

    .line 1218
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    move-result-object p2

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setBackgroundColor(I)V

    .line 1222
    :goto_0
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mupdateGuidanceLabel(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 1225
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mgetSchoolPageType(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    .line 1233
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result p2

    const/4 v0, 0x0

    const-string v2, "layerId"

    if-nez p2, :cond_6

    .line 1234
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageController(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    .line 1236
    :goto_1
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result p2

    .line 1253
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    if-ge v1, p2, :cond_3

    .line 1237
    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1238
    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 1239
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageController(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_2

    .line 1240
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1243
    :goto_2
    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1246
    invoke-virtual {p2, p1, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setPageId(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_2

    .line 1248
    invoke-virtual {p2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1253
    :cond_3
    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_hideMonitorViewArray(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1254
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 1255
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageController(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, v0

    goto :goto_4

    .line 1256
    :cond_5
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1259
    :goto_4
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1262
    invoke-virtual {v1, p1, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setPageId(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_4

    .line 1264
    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    goto :goto_3

    .line 1269
    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result p2

    .line 1287
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    if-ge v1, p2, :cond_b

    .line 1270
    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1271
    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 1272
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageController(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_7

    move-object v5, v0

    goto :goto_6

    .line 1273
    :cond_7
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1274
    :goto_6
    invoke-virtual {p1, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getStudentViewingPageInfo(Ljava/lang/String;)Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1275
    iget-object v6, v4, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    if-nez v6, :cond_8

    goto :goto_7

    :cond_8
    iget-object v4, v4, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    goto :goto_8

    :cond_9
    :goto_7
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageController(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v4

    .line 1278
    :goto_8
    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1281
    invoke-virtual {p2, v4, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setPageId(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_a

    .line 1283
    invoke-virtual {p2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1287
    :cond_b
    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_hideMonitorViewArray(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1288
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 1289
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageController(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_d

    move-object v5, v0

    goto :goto_a

    .line 1290
    :cond_d
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1291
    :goto_a
    invoke-virtual {p1, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getStudentViewingPageInfo(Ljava/lang/String;)Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1292
    iget-object v6, v4, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    if-nez v6, :cond_e

    goto :goto_b

    :cond_e
    iget-object v4, v4, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    goto :goto_c

    :cond_f
    :goto_b
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageController(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v4

    .line 1295
    :goto_c
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1298
    invoke-virtual {v1, v4, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setPageId(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_c

    .line 1300
    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    goto :goto_9

    :cond_10
    return-void

    .line 1228
    :cond_11
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p1, v1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mcurrentPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitorList;ZZ)V

    return-void
.end method
