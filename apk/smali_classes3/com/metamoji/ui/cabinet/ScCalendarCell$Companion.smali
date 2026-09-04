.class public final Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;
.super Ljava/lang/Object;
.source "ScCalendarCell.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ScCalendarCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;",
        "",
        "<init>",
        "()V",
        "calcSize",
        "Landroid/util/Size;",
        "f",
        "",
        "D_TITLE_H",
        "",
        "D_OWNER_H",
        "app"
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

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calcSize(I)Landroid/util/Size;
    .locals 2

    .line 322
    new-instance v0, Landroid/util/Size;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, p1

    invoke-direct {v0, p1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method
