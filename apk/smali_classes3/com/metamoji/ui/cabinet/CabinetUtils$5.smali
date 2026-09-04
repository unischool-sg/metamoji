.class Lcom/metamoji/ui/cabinet/CabinetUtils$5;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveList(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1583
    check-cast p1, Ljava/util/Map;

    .line 1584
    check-cast p2, Ljava/util/Map;

    .line 1586
    const-string v0, "order"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1587
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    .line 1588
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    .line 1589
    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 1591
    :cond_0
    invoke-static {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 1592
    invoke-static {p2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 1593
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    if-nez p2, :cond_2

    move-object p2, v0

    .line 1599
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
