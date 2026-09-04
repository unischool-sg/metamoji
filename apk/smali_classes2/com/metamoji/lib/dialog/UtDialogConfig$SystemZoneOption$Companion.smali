.class public final Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;
.super Ljava/lang/Object;
.source "UtDialogConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtDialogConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtDialogConfig.kt\ncom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n296#2,2:150\n*S KotlinDebug\n*F\n+ 1 UtDialogConfig.kt\ncom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion\n*L\n74#1:150,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(I)Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;
    .locals 3

    .line 74
    invoke-static {}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    .line 74
    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->getValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    if-nez v1, :cond_2

    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->NONE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    return-object p1

    :cond_2
    return-object v1
.end method
