.class public Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;
.super Ljava/lang/Object;
.source "UnFormPositionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnFormPositionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NtUnitHLineInfo"
.end annotation


# instance fields
.field private m_endX:F

.field private m_hLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_startX:F

.field final synthetic this$0:Lcom/metamoji/un/form/UnFormPositionData;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/form/UnFormPositionData;Ljava/util/ArrayList;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->this$0:Lcom/metamoji/un/form/UnFormPositionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->m_hLines:Ljava/util/ArrayList;

    .line 35
    iput p3, p0, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->m_startX:F

    .line 36
    iput p4, p0, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->m_endX:F

    return-void
.end method


# virtual methods
.method public endX()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->m_endX:F

    return v0
.end method

.method public hLines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->m_hLines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startX()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->m_startX:F

    return v0
.end method
