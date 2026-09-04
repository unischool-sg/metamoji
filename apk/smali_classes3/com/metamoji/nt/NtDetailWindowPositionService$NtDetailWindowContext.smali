.class public Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;
.super Ljava/lang/Object;
.source "NtDetailWindowPositionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtDetailWindowPositionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NtDetailWindowContext"
.end annotation


# instance fields
.field private m_feedStep:F

.field private m_forceWindowStep:Z

.field private m_marginLine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_rect:Lcom/metamoji/cm/RectEx;

.field private m_useMarginLine:Z

.field private m_windowStepRate:F

.field final synthetic this$0:Lcom/metamoji/nt/NtDetailWindowPositionService;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtDetailWindowPositionService;FFZLjava/util/ArrayList;Lcom/metamoji/cm/RectEx;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/cm/RectEx;",
            "Z)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->this$0:Lcom/metamoji/nt/NtDetailWindowPositionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_feedStep:F

    .line 52
    iput p3, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_windowStepRate:F

    .line 53
    iput-boolean p4, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_useMarginLine:Z

    .line 54
    iput-object p5, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_marginLine:Ljava/util/ArrayList;

    .line 55
    iput-object p6, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_rect:Lcom/metamoji/cm/RectEx;

    .line 56
    iput-boolean p7, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_forceWindowStep:Z

    return-void
.end method


# virtual methods
.method public dwRect()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_rect:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public feedStep()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_feedStep:F

    return v0
.end method

.method public forceWindowStep()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_forceWindowStep:Z

    return v0
.end method

.method public isLargeMode()Z
    .locals 4

    .line 60
    iget v0, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_feedStep:F

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public marginLine()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_marginLine:Ljava/util/ArrayList;

    return-object v0
.end method

.method public useMarginLine()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_useMarginLine:Z

    return v0
.end method

.method public windowStepRate()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->m_windowStepRate:F

    return v0
.end method
