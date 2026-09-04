.class public final Lcom/metamoji/lib/utils/DrawableBitmap;
.super Ljava/lang/Object;
.source "DrawableBitmap.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tB5\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\rJ\u0006\u0010\u001a\u001a\u00020\u0000J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/DrawableBitmap;",
        "Ljava/io/Closeable;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "color",
        "",
        "width",
        "height",
        "<init>",
        "(Landroid/graphics/drawable/Drawable;III)V",
        "context",
        "Landroid/content/Context;",
        "id",
        "(Landroid/content/Context;IIII)V",
        "getDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "getColor",
        "()I",
        "getWidth",
        "getHeight",
        "bitmapRef",
        "Lcom/metamoji/lib/utils/UtLazyResetableValue;",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "standby",
        "close",
        "",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bitmapRef:Lcom/metamoji/lib/utils/UtLazyResetableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/UtLazyResetableValue<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final color:I

.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/metamoji/lib/utils/DrawableBitmap;-><init>(Landroid/graphics/drawable/Drawable;III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;III)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->drawable:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->color:I

    iput p3, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->width:I

    iput p4, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->height:I

    .line 20
    new-instance p1, Lcom/metamoji/lib/utils/UtLazyResetableValue;

    new-instance p2, Lcom/metamoji/lib/utils/DrawableBitmap$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/metamoji/lib/utils/DrawableBitmap$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/lib/utils/DrawableBitmap;)V

    invoke-direct {p1, p2}, Lcom/metamoji/lib/utils/UtLazyResetableValue;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->bitmapRef:Lcom/metamoji/lib/utils/UtLazyResetableValue;

    return-void
.end method

.method static final bitmapRef$lambda$0(Lcom/metamoji/lib/utils/DrawableBitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->color:I

    iget v2, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->width:I

    iget p0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->height:I

    invoke-static {v0, v1, v2, p0}, Lcom/metamoji/lib/utils/DrawableExtKt;->toBitmap(Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static final close$lambda$2(Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final standby$lambda$1(Lcom/metamoji/lib/utils/DrawableBitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->color:I

    iget v2, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->width:I

    iget p0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->height:I

    invoke-static {v0, v1, v2, p0}, Lcom/metamoji/lib/utils/DrawableExtKt;->toBitmap(Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->bitmapRef:Lcom/metamoji/lib/utils/UtLazyResetableValue;

    new-instance v1, Lcom/metamoji/lib/utils/DrawableBitmap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/metamoji/lib/utils/DrawableBitmap$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLazyResetableValue;->reset(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->bitmapRef:Lcom/metamoji/lib/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtLazyResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getColor()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->color:I

    return v0
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->width:I

    return v0
.end method

.method public final standby()Lcom/metamoji/lib/utils/DrawableBitmap;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/metamoji/lib/utils/DrawableBitmap;->bitmapRef:Lcom/metamoji/lib/utils/UtLazyResetableValue;

    new-instance v1, Lcom/metamoji/lib/utils/DrawableBitmap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/DrawableBitmap$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/DrawableBitmap;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLazyResetableValue;->setIfNeed(Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method
