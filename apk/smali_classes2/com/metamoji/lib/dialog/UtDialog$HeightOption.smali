.class public final enum Lcom/metamoji/lib/dialog/UtDialog$HeightOption;
.super Ljava/lang/Enum;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeightOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/UtDialog$HeightOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$HeightOption;",
        "",
        "param",
        "",
        "isDynamicSizing",
        "",
        "<init>",
        "(Ljava/lang/String;IIZ)V",
        "getParam",
        "()I",
        "()Z",
        "COMPACT",
        "FULL",
        "FIXED",
        "LIMIT",
        "AUTO_SCROLL",
        "CUSTOM",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

.field public static final enum AUTO_SCROLL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

.field public static final enum COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

.field public static final enum CUSTOM:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

.field public static final enum FIXED:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

.field public static final enum FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

.field public static final enum LIMIT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;


# instance fields
.field private final isDynamicSizing:Z

.field private final param:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/UtDialog$HeightOption;
    .locals 6

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FIXED:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    sget-object v3, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->LIMIT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    sget-object v4, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->AUTO_SCROLL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    sget-object v5, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->CUSTOM:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 198
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    const-string v1, "COMPACT"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    .line 199
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    const/4 v1, -0x1

    const-string v4, "FULL"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    .line 200
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    const-string v1, "FIXED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FIXED:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    .line 201
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    const-string v1, "LIMIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->LIMIT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    .line 202
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    const-string v1, "AUTO_SCROLL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->AUTO_SCROLL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    .line 203
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    const-string v1, "CUSTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->CUSTOM:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-static {}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->$values()[Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->param:I

    iput-boolean p4, p0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->isDynamicSizing:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/UtDialog$HeightOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog$HeightOption;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/UtDialog$HeightOption;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    return-object v0
.end method


# virtual methods
.method public final getParam()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->param:I

    return v0
.end method

.method public final isDynamicSizing()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->isDynamicSizing:Z

    return v0
.end method
