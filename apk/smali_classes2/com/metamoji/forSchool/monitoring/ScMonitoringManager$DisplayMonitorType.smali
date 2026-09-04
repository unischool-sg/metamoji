.class public Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$DisplayMonitorType;
.super Ljava/lang/Object;
.source "ScMonitoringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayMonitorType"
.end annotation


# static fields
.field public static final STUDENT_LAYER:I = 0x0

.field public static final STUDENT_VIEWING_PAGE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$DisplayMonitorType;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
