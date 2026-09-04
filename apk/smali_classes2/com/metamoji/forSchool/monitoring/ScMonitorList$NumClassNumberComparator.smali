.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumClassNumberComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/forSchool/monitoring/ScMonitorView;",
        ">;"
    }
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

    .line 1569
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)I
    .locals 1

    const/4 v0, -0x1

    .line 1572
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getClassNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1573
    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getClassNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1575
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v0
.end method

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

    .line 1569
    check-cast p1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    check-cast p2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;->compare(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)I

    move-result p1

    return p1
.end method
