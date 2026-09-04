.class public Lcom/metamoji/un/form/UnScheduleUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnScheduleUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnScheduleUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# instance fields
.field public final VERSION_LATEST:I

.field final synthetic this$0:Lcom/metamoji/un/form/UnScheduleUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/form/UnScheduleUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/metamoji/un/form/UnScheduleUnit$ModelDef;->this$0:Lcom/metamoji/un/form/UnScheduleUnit;

    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/metamoji/un/form/UnScheduleUnit$ModelDef;->VERSION_LATEST:I

    return-void
.end method
