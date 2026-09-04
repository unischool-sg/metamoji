.class public final enum Lcom/metamoji/tle/TextLineExtractType;
.super Ljava/lang/Enum;
.source "TextLineExtractType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/tle/TextLineExtractType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum Confirm:Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum ConfirmAll:Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum ConfirmPlus:Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum ToFont:Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum ToFontAll:Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum ToFontPlus:Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum ToStroke:Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum ToStrokeAll:Lcom/metamoji/tle/TextLineExtractType;

.field public static final enum ToStrokePlus:Lcom/metamoji/tle/TextLineExtractType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/tle/TextLineExtractType;
    .locals 9

    .line 3
    sget-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToFont:Lcom/metamoji/tle/TextLineExtractType;

    sget-object v1, Lcom/metamoji/tle/TextLineExtractType;->ToStroke:Lcom/metamoji/tle/TextLineExtractType;

    sget-object v2, Lcom/metamoji/tle/TextLineExtractType;->Confirm:Lcom/metamoji/tle/TextLineExtractType;

    sget-object v3, Lcom/metamoji/tle/TextLineExtractType;->ToFontPlus:Lcom/metamoji/tle/TextLineExtractType;

    sget-object v4, Lcom/metamoji/tle/TextLineExtractType;->ToStrokePlus:Lcom/metamoji/tle/TextLineExtractType;

    sget-object v5, Lcom/metamoji/tle/TextLineExtractType;->ConfirmPlus:Lcom/metamoji/tle/TextLineExtractType;

    sget-object v6, Lcom/metamoji/tle/TextLineExtractType;->ToFontAll:Lcom/metamoji/tle/TextLineExtractType;

    sget-object v7, Lcom/metamoji/tle/TextLineExtractType;->ToStrokeAll:Lcom/metamoji/tle/TextLineExtractType;

    sget-object v8, Lcom/metamoji/tle/TextLineExtractType;->ConfirmAll:Lcom/metamoji/tle/TextLineExtractType;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/tle/TextLineExtractType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "ToFont"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToFont:Lcom/metamoji/tle/TextLineExtractType;

    .line 5
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "ToStroke"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToStroke:Lcom/metamoji/tle/TextLineExtractType;

    .line 6
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "Confirm"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->Confirm:Lcom/metamoji/tle/TextLineExtractType;

    .line 7
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "ToFontPlus"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToFontPlus:Lcom/metamoji/tle/TextLineExtractType;

    .line 8
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "ToStrokePlus"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToStrokePlus:Lcom/metamoji/tle/TextLineExtractType;

    .line 9
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "ConfirmPlus"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->ConfirmPlus:Lcom/metamoji/tle/TextLineExtractType;

    .line 10
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "ToFontAll"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToFontAll:Lcom/metamoji/tle/TextLineExtractType;

    .line 11
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "ToStrokeAll"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToStrokeAll:Lcom/metamoji/tle/TextLineExtractType;

    .line 12
    new-instance v0, Lcom/metamoji/tle/TextLineExtractType;

    const-string v1, "ConfirmAll"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->ConfirmAll:Lcom/metamoji/tle/TextLineExtractType;

    .line 3
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractType;->$values()[Lcom/metamoji/tle/TextLineExtractType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/tle/TextLineExtractType;->$VALUES:[Lcom/metamoji/tle/TextLineExtractType;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/tle/TextLineExtractType;
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
    const-class v0, Lcom/metamoji/tle/TextLineExtractType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/tle/TextLineExtractType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/tle/TextLineExtractType;
    .locals 1

    .line 3
    sget-object v0, Lcom/metamoji/tle/TextLineExtractType;->$VALUES:[Lcom/metamoji/tle/TextLineExtractType;

    invoke-virtual {v0}, [Lcom/metamoji/tle/TextLineExtractType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/tle/TextLineExtractType;

    return-object v0
.end method
