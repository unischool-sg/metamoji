.class public final enum Lcom/metamoji/lib/dialog/UtDialog$GuardColor;
.super Ljava/lang/Enum;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GuardColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/UtDialog$GuardColor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$GuardColor;",
        "",
        "color",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getColor",
        "()I",
        "INVALID",
        "TRANSPARENT",
        "DIM",
        "SEE_THROUGH",
        "SOLID_GRAY",
        "THEME_DIM",
        "THEME_SEE_THROUGH",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

.field public static final enum DIM:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

.field public static final enum INVALID:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

.field public static final enum SEE_THROUGH:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

.field public static final enum SOLID_GRAY:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

.field public static final enum THEME_DIM:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

.field public static final enum THEME_SEE_THROUGH:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

.field public static final enum TRANSPARENT:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;


# instance fields
.field private final color:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/UtDialog$GuardColor;
    .locals 7

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->INVALID:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->TRANSPARENT:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->DIM:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    sget-object v3, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->SEE_THROUGH:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    sget-object v4, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->SOLID_GRAY:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    sget-object v5, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->THEME_DIM:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    sget-object v6, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->THEME_SEE_THROUGH:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 339
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const-string v3, "INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->INVALID:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    .line 340
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const-string v4, "TRANSPARENT"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v3}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->TRANSPARENT:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    .line 341
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    const/16 v3, 0x40

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const-string v4, "DIM"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5, v3}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->DIM:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    .line 342
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    const/16 v3, 0xdd

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const-string v3, "SEE_THROUGH"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v2}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->SEE_THROUGH:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    .line 343
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    const/16 v2, 0xc1

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const-string v3, "SOLID_GRAY"

    const/4 v6, 0x4

    invoke-direct {v0, v3, v6, v2}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->SOLID_GRAY:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    .line 345
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    const/4 v2, 0x5

    invoke-static {v1, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const-string v5, "THEME_DIM"

    invoke-direct {v0, v5, v2, v3}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->THEME_DIM:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    .line 346
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    const/4 v2, 0x6

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const-string v3, "THEME_SEE_THROUGH"

    invoke-direct {v0, v3, v2, v1}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->THEME_SEE_THROUGH:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-static {}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->$values()[Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->color:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/UtDialog$GuardColor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog$GuardColor;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/UtDialog$GuardColor;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    return-object v0
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->color:I

    return v0
.end method
