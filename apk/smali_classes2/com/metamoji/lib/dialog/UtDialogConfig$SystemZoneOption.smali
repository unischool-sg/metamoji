.class public final enum Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;
.super Ljava/lang/Enum;
.source "UtDialogConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialogConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemZoneOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NONE",
        "FIT_TO_ACTIVITY",
        "HIDE_ACTION_BAR",
        "CUSTOM_INSETS",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

.field public static final enum CUSTOM_INSETS:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

.field public static final Companion:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;

.field public static final enum FIT_TO_ACTIVITY:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

.field public static final enum HIDE_ACTION_BAR:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

.field public static final enum NONE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;
    .locals 4

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->NONE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->FIT_TO_ACTIVITY:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->HIDE_ACTION_BAR:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    sget-object v3, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->CUSTOM_INSETS:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->NONE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    .line 68
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    const-string v1, "FIT_TO_ACTIVITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->FIT_TO_ACTIVITY:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    .line 69
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    const-string v1, "HIDE_ACTION_BAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->HIDE_ACTION_BAR:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    .line 70
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    const-string v1, "CUSTOM_INSETS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->CUSTOM_INSETS:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    invoke-static {}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->$values()[Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->Companion:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->$VALUES:[Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->value:I

    return v0
.end method
