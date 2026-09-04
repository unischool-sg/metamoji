.class public final enum Lcom/metamoji/un/text/model/UnitBorderStyle;
.super Ljava/lang/Enum;
.source "UnitBorderStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/UnitBorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum None:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum Style1:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum Style2:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum Style3:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum Style4:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum Style5:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum Style6:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum Style7:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public static final enum StyleBonyari:Lcom/metamoji/un/text/model/UnitBorderStyle;


# instance fields
.field public _plusBonyari:Z

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 9

    .line 3
    sget-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style1:Lcom/metamoji/un/text/model/UnitBorderStyle;

    sget-object v2, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style2:Lcom/metamoji/un/text/model/UnitBorderStyle;

    sget-object v3, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style3:Lcom/metamoji/un/text/model/UnitBorderStyle;

    sget-object v4, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style4:Lcom/metamoji/un/text/model/UnitBorderStyle;

    sget-object v5, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style5:Lcom/metamoji/un/text/model/UnitBorderStyle;

    sget-object v6, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style6:Lcom/metamoji/un/text/model/UnitBorderStyle;

    sget-object v7, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style7:Lcom/metamoji/un/text/model/UnitBorderStyle;

    sget-object v8, Lcom/metamoji/un/text/model/UnitBorderStyle;->StyleBonyari:Lcom/metamoji/un/text/model/UnitBorderStyle;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 5
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const-string v1, "Style1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style1:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 6
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const-string v1, "Style2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style2:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 7
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const-string v1, "Style3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style3:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 8
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const-string v1, "Style4"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style4:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 9
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const-string v1, "Style5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style5:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 10
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const-string v1, "Style6"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style6:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 11
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const-string v1, "Style7"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style7:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 13
    new-instance v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    const/16 v1, 0x8

    const/16 v2, 0x3e8

    const-string v3, "StyleBonyari"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->StyleBonyari:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 3
    invoke-static {}, Lcom/metamoji/un/text/model/UnitBorderStyle;->$values()[Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->$VALUES:[Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->_plusBonyari:Z

    .line 18
    iput p3, p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 5

    .line 26
    invoke-static {}, Lcom/metamoji/un/text/model/UnitBorderStyle;->values()[Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 27
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/UnitBorderStyle;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 1

    .line 3
    sget-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->$VALUES:[Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/UnitBorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/metamoji/un/text/model/UnitBorderStyle;->value:I

    return v0
.end method
