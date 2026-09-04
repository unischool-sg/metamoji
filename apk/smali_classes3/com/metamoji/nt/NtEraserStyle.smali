.class public Lcom/metamoji/nt/NtEraserStyle;
.super Ljava/lang/Object;
.source "NtEraserStyle.java"


# instance fields
.field private m_lineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/metamoji/nt/NtEraserStyle;->m_lineWidth:F

    return-void
.end method


# virtual methods
.method public getLineWidth()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/metamoji/nt/NtEraserStyle;->m_lineWidth:F

    return v0
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/metamoji/nt/NtEraserStyle;->m_lineWidth:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    iget v0, p0, Lcom/metamoji/nt/NtEraserStyle;->m_lineWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "width=%f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
