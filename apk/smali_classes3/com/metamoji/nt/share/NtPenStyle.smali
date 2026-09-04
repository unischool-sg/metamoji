.class public Lcom/metamoji/nt/share/NtPenStyle;
.super Ljava/lang/Object;
.source "NtPenStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public arrowKinds:Ljava/lang/String;

.field public arrowType:Ljava/lang/String;

.field public beginRun:F

.field public beginRunDelta:F

.field public beginRunRate:F

.field public beginStay:F

.field public beginStayDelta:F

.field public beginStayRate:F

.field public endRun:F

.field public endRunDelta:F

.field public endRunRate:F

.field public endStay:F

.field public endStayDelta:F

.field public endStayRate:F

.field public fillAlpha:F

.field public fillColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public fillType:Ljava/lang/String;

.field public hasArrow:Z

.field public hasFill:Z

.field private inkColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public inkId:Ljava/lang/String;

.field public inkType:Ljava/lang/String;

.field public lineAlpha:F

.field private lineColor:Ljava/lang/Integer;

.field public lineDash:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public lineWidth:F

.field public penAngle:F

.field public penId:Ljava/lang/String;

.field public penRate:F

.field public tailRun:F

.field public tailRunDelta:F

.field public tailRunRate:F

.field public tailStay:F

.field public tailStayDelta:F

.field public tailStayRate:F

.field public trans:F

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 920
    new-instance v0, Lcom/metamoji/nt/share/NtPenStyle$2;

    invoke-direct {v0}, Lcom/metamoji/nt/share/NtPenStyle$2;-><init>()V

    sput-object v0, Lcom/metamoji/nt/share/NtPenStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    .line 28
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 29
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    .line 31
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 32
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    .line 33
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    .line 34
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    .line 40
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    .line 41
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    .line 42
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    .line 43
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    .line 44
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    .line 45
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    .line 46
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    .line 47
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    .line 48
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    .line 49
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    .line 50
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    .line 51
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    .line 52
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    .line 53
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    .line 54
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    .line 55
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    .line 56
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    .line 57
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    .line 58
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 63
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    .line 65
    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    .line 66
    iput-boolean v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 933
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    const/4 v0, 0x0

    .line 934
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    .line 935
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    .line 939
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    .line 940
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    .line 941
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    .line 942
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    .line 945
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string v2, "fountainpen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_0

    .line 947
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    .line 950
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    .line 956
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    goto :goto_0

    .line 970
    :cond_0
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    .line 971
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    .line 972
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    .line 973
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    .line 974
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    .line 975
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    .line 976
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    .line 977
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    .line 978
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    .line 979
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    .line 980
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    .line 981
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    .line 982
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    .line 983
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    .line 984
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    .line 985
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    .line 986
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    .line 987
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    .line 988
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    .line 993
    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v3, "shapepen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    .line 996
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    .line 997
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 1000
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-void

    .line 1003
    :cond_3
    iput-boolean v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 1004
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    .line 1005
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    .line 1006
    iput v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    .line 1007
    iput-boolean v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 1008
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 1009
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/nt/share/NtPenStyle-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 78
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 79
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    .line 80
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    .line 81
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 82
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    .line 83
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    .line 84
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    .line 90
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    .line 91
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    .line 92
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    .line 93
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    .line 94
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    .line 95
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    .line 96
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    .line 97
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    .line 98
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    .line 99
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    .line 100
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    .line 101
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    .line 102
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    .line 103
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    .line 104
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    .line 105
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    .line 106
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    .line 107
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    .line 108
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    .line 112
    iget-boolean v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    iput-boolean v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 113
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    .line 115
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    .line 116
    iget-boolean v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    iput-boolean v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 117
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 118
    iget-object p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 670
    instance-of v2, p1, Lcom/metamoji/nt/share/NtPenStyle;

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 674
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/metamoji/nt/share/NtPenStyle;

    .line 676
    iget-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    iget-object v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_8

    iget v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    iget v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 678
    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    iget-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    iget-object v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    iget v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    iget v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    iget v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    iget v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    iget v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    iget v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    iget-object v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 684
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    iget-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    iget-object v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 686
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    iget-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    iget-object v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 688
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    iget-object v2, v2, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    if-eq v3, v2, :cond_7

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 689
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 691
    :cond_7
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/share/NtPenStyle;->fountainEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 693
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/share/NtPenStyle;->fillAndArrowEquals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public fillAndArrowEquals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 732
    instance-of v2, p1, Lcom/metamoji/nt/share/NtPenStyle;

    if-nez v2, :cond_1

    goto :goto_0

    .line 735
    :cond_1
    check-cast p1, Lcom/metamoji/nt/share/NtPenStyle;

    .line 737
    iget-boolean v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    iget-boolean v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    iget-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 740
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    iget-boolean v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 744
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 746
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public fountainEquals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 701
    instance-of v2, p1, Lcom/metamoji/nt/share/NtPenStyle;

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 704
    :cond_1
    check-cast p1, Lcom/metamoji/nt/share/NtPenStyle;

    .line 706
    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    iget v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getArrowKinds()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-object v0
.end method

.method public getArrowType()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    return-object v0
.end method

.method public getBeginRun()F
    .locals 1

    .line 221
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    return v0
.end method

.method public getBeginRunDelta()F
    .locals 1

    .line 229
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    return v0
.end method

.method public getBeginRunRate()F
    .locals 1

    .line 225
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    return v0
.end method

.method public getBeginStay()F
    .locals 1

    .line 209
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    return v0
.end method

.method public getBeginStayDelta()F
    .locals 1

    .line 217
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    return v0
.end method

.method public getBeginStayRate()F
    .locals 1

    .line 213
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    return v0
.end method

.method public getEndRun()F
    .locals 1

    .line 245
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    return v0
.end method

.method public getEndRunDelta()F
    .locals 1

    .line 253
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    return v0
.end method

.method public getEndRunRate()F
    .locals 1

    .line 249
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    return v0
.end method

.method public getEndStay()F
    .locals 1

    .line 233
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    return v0
.end method

.method public getEndStayDelta()F
    .locals 1

    .line 241
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    return v0
.end method

.method public getEndStayRate()F
    .locals 1

    .line 237
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    return v0
.end method

.method public getFillAlpha()F
    .locals 1

    .line 309
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    return v0
.end method

.method public getFillColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    return-object v0
.end method

.method public getFillType()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    return-object v0
.end method

.method public getHasArrow()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    return v0
.end method

.method public getHasFill()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    return v0
.end method

.method public getInkColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    return-object v0
.end method

.method public getInkId()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    return-object v0
.end method

.method public getInkType()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLineAlpha()F
    .locals 1

    .line 134
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    return v0
.end method

.method public getLineColor()I
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getLineDash()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 152
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    return v0
.end method

.method public getPenAngle()F
    .locals 1

    .line 158
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    return v0
.end method

.method public getPenId()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    return-object v0
.end method

.method public getPenRate()F
    .locals 1

    .line 166
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    return v0
.end method

.method public getTailRun()F
    .locals 1

    .line 269
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    return v0
.end method

.method public getTailRunDelta()F
    .locals 1

    .line 277
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    return v0
.end method

.method public getTailRunRate()F
    .locals 1

    .line 273
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    return v0
.end method

.method public getTailStay()F
    .locals 1

    .line 257
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    return v0
.end method

.method public getTailStayDelta()F
    .locals 1

    .line 265
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    return v0
.end method

.method public getTailStayRate()F
    .locals 1

    .line 261
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    return v0
.end method

.method public getTrans()F
    .locals 1

    .line 205
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 755
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 758
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isLineColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isPenId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isInkId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 765
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public isArrowKinds()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isArrowType()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBeginRun()Z
    .locals 2

    .line 404
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBeginRunDelta()Z
    .locals 2

    .line 408
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBeginRunRate()Z
    .locals 2

    .line 406
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBeginStay()Z
    .locals 2

    .line 398
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBeginStayDelta()Z
    .locals 2

    .line 402
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBeginStayRate()Z
    .locals 2

    .line 400
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndRun()Z
    .locals 2

    .line 416
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndRunDelta()Z
    .locals 2

    .line 420
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndRunRate()Z
    .locals 2

    .line 418
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndStay()Z
    .locals 2

    .line 410
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndStayDelta()Z
    .locals 2

    .line 414
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndStayRate()Z
    .locals 2

    .line 412
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFillAlpha()Z
    .locals 2

    .line 437
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFillColors()Z
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFillType()Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInkColors()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInkId()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInkType()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLineAlpha()Z
    .locals 2

    .line 347
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLineColor()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLineDash()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLineWidth()Z
    .locals 2

    .line 362
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPenAngle()Z
    .locals 2

    .line 367
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPenId()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPenRate()Z
    .locals 2

    .line 372
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTailRun()Z
    .locals 2

    .line 428
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTailRunDelta()Z
    .locals 2

    .line 432
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTailRunRate()Z
    .locals 2

    .line 430
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTailStay()Z
    .locals 2

    .line 422
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTailStayDelta()Z
    .locals 2

    .line 426
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTailStayRate()Z
    .locals 2

    .line 424
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTrans()Z
    .locals 2

    .line 396
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isType()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setArrowKinds(Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-void
.end method

.method public setArrowType(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    return-void
.end method

.method public setBeginRun(F)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    return-void
.end method

.method public setBeginRunDelta(F)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    return-void
.end method

.method public setBeginRunRate(F)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    return-void
.end method

.method public setBeginStay(F)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    return-void
.end method

.method public setBeginStayDelta(F)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    return-void
.end method

.method public setBeginStayRate(F)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    return-void
.end method

.method public setEndRun(F)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    return-void
.end method

.method public setEndRunDelta(F)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    return-void
.end method

.method public setEndRunRate(F)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    return-void
.end method

.method public setEndStay(F)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    return-void
.end method

.method public setEndStayDelta(F)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    return-void
.end method

.method public setEndStayRate(F)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    return-void
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    return-void
.end method

.method public setFillColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    return-void
.end method

.method public setFillType(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    return-void
.end method

.method public setHasArrow(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    return-void
.end method

.method public setHasFill(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    return-void
.end method

.method public setInkColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 199
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    return-void
.end method

.method public setInkId(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    return-void
.end method

.method public setInkType(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    return-void
.end method

.method public setLineAlpha(F)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    return-void
.end method

.method public setLineDash(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    return-void
.end method

.method public setPenAngle(F)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    return-void
.end method

.method public setPenId(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    return-void
.end method

.method public setPenRate(F)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    return-void
.end method

.method public setPropertiesFrom(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 457
    const-string v0, "lineAlpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 463
    :cond_0
    const-string v0, "lineColor"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 464
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 466
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    .line 468
    new-instance v1, Lcom/metamoji/nt/share/NtPenStyle$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/nt/share/NtPenStyle$1;-><init>(Lcom/metamoji/nt/share/NtPenStyle;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    .line 472
    :cond_1
    const-string v0, "lineDash"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 475
    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    goto :goto_1

    .line 478
    :cond_2
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_8

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 484
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 486
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 489
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :cond_4
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 492
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move-object v1, v2

    :cond_7
    iput-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    .line 501
    :cond_8
    :goto_1
    const-string v0, "lineWidth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 504
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 507
    :cond_9
    const-string v0, "penAngle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 510
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    .line 513
    :cond_a
    const-string v0, "penRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 516
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    .line 521
    :cond_b
    const-string/jumbo v0, "trans"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 523
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    .line 526
    :cond_c
    const-string v0, "beginStay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 528
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    .line 531
    :cond_d
    const-string v0, "beginStayRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 533
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    .line 536
    :cond_e
    const-string v0, "beginStayDelta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 538
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    .line 541
    :cond_f
    const-string v0, "beginRun"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 543
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    .line 546
    :cond_10
    const-string v0, "beginRunRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 548
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    .line 551
    :cond_11
    const-string v0, "beginRunDelta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 553
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    .line 556
    :cond_12
    const-string v0, "endStay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 558
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    .line 561
    :cond_13
    const-string v0, "endStayRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 563
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    .line 566
    :cond_14
    const-string v0, "endStayDelta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 568
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    .line 571
    :cond_15
    const-string v0, "endRun"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 573
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    .line 576
    :cond_16
    const-string v0, "endRunRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 578
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    .line 581
    :cond_17
    const-string v0, "endRunDelta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 583
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    .line 586
    :cond_18
    const-string/jumbo v0, "tailStay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 588
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    .line 591
    :cond_19
    const-string/jumbo v0, "tailStayRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 593
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    .line 596
    :cond_1a
    const-string/jumbo v0, "tailStayDelta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 598
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    .line 601
    :cond_1b
    const-string/jumbo v0, "tailRun"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 603
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    .line 606
    :cond_1c
    const-string/jumbo v0, "tailRunRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 608
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    .line 611
    :cond_1d
    const-string/jumbo v0, "tailRunDelta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 613
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    .line 618
    :cond_1e
    const-string v0, "hasFill"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 620
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    .line 623
    :cond_1f
    const-string v0, "fillType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 625
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    .line 628
    :cond_20
    const-string v0, "fillColors"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 629
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    .line 630
    new-array v2, v2, [Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    goto :goto_3

    :cond_21
    if-eqz v0, :cond_23

    .line 631
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_23

    .line 632
    check-cast v0, Ljava/util/List;

    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    .line 634
    new-instance v3, Ljava/util/ArrayList;

    div-int/lit8 v4, v2, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v1, v2, :cond_22

    .line 636
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v1, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 638
    :cond_22
    iput-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    .line 641
    :cond_23
    :goto_3
    const-string v0, "fillAlpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 643
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    .line 646
    :cond_24
    const-string v0, "hasArrow"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 648
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    .line 651
    :cond_25
    const-string v0, "ArrowType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 653
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 656
    :cond_26
    const-string v0, "ArrowKinds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 658
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    :cond_27
    return-void
.end method

.method public setTailRun(F)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    return-void
.end method

.method public setTailRunDelta(F)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    return-void
.end method

.method public setTailRunRate(F)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    return-void
.end method

.method public setTailStay(F)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    return-void
.end method

.method public setTailStayDelta(F)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    return-void
.end method

.method public setTailStayRate(F)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    return-void
.end method

.method public setTrans(F)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string v2, "(null)"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "type=%s,"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "alpha=%f,"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "color=%08x,"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "width=%f,"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v1, "dash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    const/16 v3, 0x2c

    const/16 v4, 0x5d

    const/4 v5, 0x0

    const/16 v6, 0x5b

    if-eqz v1, :cond_3

    .line 783
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 785
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-int/lit8 v9, v7, 0x1

    if-lez v7, :cond_1

    .line 787
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 788
    :cond_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v9

    goto :goto_1

    .line 790
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 794
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :goto_2
    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, ",angle=%f,"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "rate=%f,"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "penId=%s,"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "inkId=%s,"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "inkType=%s,"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const-string v1, "inkColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 804
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 806
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v5

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    if-lez v7, :cond_7

    .line 808
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v9

    goto :goto_6

    .line 811
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 815
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :goto_7
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isTrans()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v7, "trans=%f"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isBeginStay()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v7, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "beginStay=(%f,%f,%f)"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isBeginRun()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v7, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "beginRun=(%f,%f,%f)"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isEndStay()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v7, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "endStay=(%f,%f,%f)"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isEndRun()Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v7, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "endRun=(%f,%f,%f)"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_e
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isTailStay()Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v7, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v7, "tailStay=(%f,%f,%f)"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :cond_f
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isTailRun()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v7, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v7, "tailRun=(%f,%f,%f)"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_10
    iget-boolean v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    const-string v7, "),"

    if-eqz v1, :cond_16

    .line 829
    const-string v1, "fill("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isFillType()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v8, "fillType=%s"

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_11
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isFillColors()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 832
    const-string v1, "fillColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 835
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v6, v5, 0x1

    if-lez v5, :cond_12

    .line 839
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    :cond_12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_8

    .line 842
    :cond_13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 846
    :cond_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_15
    :goto_9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_16
    iget-boolean v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    if-eqz v1, :cond_19

    .line 852
    const-string v1, "arrow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isArrowType()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "arrowType=%s,"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_17
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isArrowKinds()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "arrowKinds=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_18
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 868
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 870
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 871
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 872
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 873
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 874
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 875
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkColors:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 880
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string v0, "fountainpen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 882
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 884
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 885
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 886
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 887
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 888
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 889
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 891
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 892
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 893
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 894
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 895
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 896
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 898
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 899
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 900
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 901
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 902
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 903
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 908
    :cond_0
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v0, "shapepen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 909
    iget-boolean p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 911
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 912
    iget p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 913
    iget-boolean p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    iget-object p2, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
