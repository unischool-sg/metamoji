.class public final enum Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;
.super Ljava/lang/Enum;
.source "UnBGFormUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnBGFormUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FORMDESC_VAL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

.field public static final enum FORMDESC_VAL_TYPE_CALENDER_MONTHLY:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

.field public static final enum FORMDESC_VAL_TYPE_CALENDER_YEARLY:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

.field public static final enum FORMDESC_VAL_TYPE_RULEDLINE:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

.field public static final enum FORMDESC_VAL_TYPE_SQUARED_CROSS:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

.field public static final enum FORMDESC_VAL_TYPE_SQUARED_DOT:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

.field public static final enum FORMDESC_VAL_TYPE_SQUARED_GRID:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

.field public static final enum FORMDESC_VAL_TYPE_TEXTSETTINGS:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;
    .locals 7

    .line 107
    sget-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_RULEDLINE:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    sget-object v1, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_GRID:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    sget-object v2, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_DOT:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    sget-object v3, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_CROSS:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    sget-object v4, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_CALENDER_MONTHLY:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    sget-object v5, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_CALENDER_YEARLY:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    sget-object v6, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_TEXTSETTINGS:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    const-string v1, "FORMDESC_VAL_TYPE_RULEDLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_RULEDLINE:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    .line 110
    new-instance v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    const-string v1, "FORMDESC_VAL_TYPE_SQUARED_GRID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_GRID:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    .line 111
    new-instance v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    const-string v1, "FORMDESC_VAL_TYPE_SQUARED_DOT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_DOT:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    .line 112
    new-instance v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    const-string v1, "FORMDESC_VAL_TYPE_SQUARED_CROSS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_SQUARED_CROSS:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    .line 114
    new-instance v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    const-string v1, "FORMDESC_VAL_TYPE_CALENDER_MONTHLY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_CALENDER_MONTHLY:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    .line 115
    new-instance v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    const-string v1, "FORMDESC_VAL_TYPE_CALENDER_YEARLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_CALENDER_YEARLY:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    .line 117
    new-instance v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    const-string v1, "FORMDESC_VAL_TYPE_TEXTSETTINGS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->FORMDESC_VAL_TYPE_TEXTSETTINGS:Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    .line 107
    invoke-static {}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->$values()[Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->$VALUES:[Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 107
    const-class v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;
    .locals 1

    .line 107
    sget-object v0, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->$VALUES:[Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    invoke-virtual {v0}, [Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    return-object v0
.end method
