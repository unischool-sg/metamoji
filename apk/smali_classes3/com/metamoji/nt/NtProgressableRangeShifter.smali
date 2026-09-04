.class public Lcom/metamoji/nt/NtProgressableRangeShifter;
.super Ljava/lang/Object;
.source "NtProgressableRangeShifter.java"

# interfaces
.implements Lcom/metamoji/nt/INtProgressUI;


# instance fields
.field private final m_maxValue:F

.field private final m_minValue:F

.field private final m_progress:Lcom/metamoji/nt/INtProgressUI;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/INtProgressUI;FF)V
    .locals 0
    .param p1    # Lcom/metamoji/nt/INtProgressUI;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_progress:Lcom/metamoji/nt/INtProgressUI;

    .line 21
    iput p2, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_minValue:F

    .line 22
    iput p3, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_maxValue:F

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_progress:Lcom/metamoji/nt/INtProgressUI;

    invoke-interface {v0}, Lcom/metamoji/nt/INtProgressUI;->finish()V

    return-void
.end method

.method public getMaxValue()F
    .locals 1

    .line 17
    iget v0, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_maxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 14
    iget v0, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_minValue:F

    return v0
.end method

.method public progress(F)V
    .locals 2

    .line 32
    iget v0, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_minValue:F

    iget v1, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_maxValue:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 33
    iget-object p1, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_progress:Lcom/metamoji/nt/INtProgressUI;

    invoke-interface {p1, v0}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V

    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/nt/NtProgressableRangeShifter;->m_progress:Lcom/metamoji/nt/INtProgressUI;

    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtProgressUI;->setProgressText(Ljava/lang/String;)V

    return-void
.end method
