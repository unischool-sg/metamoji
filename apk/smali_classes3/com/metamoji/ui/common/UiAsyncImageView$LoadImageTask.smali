.class Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "UiAsyncImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiAsyncImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiAsyncImageView;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/common/UiAsyncImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    .line 129
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p1, Lcom/metamoji/ui/common/UiAsyncImageView;->m_iStream:Ljava/io/InputStream;

    .line 132
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 133
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 134
    iget-object v4, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object v4, v4, Lcom/metamoji/ui/common/UiAsyncImageView;->m_iStream:Ljava/io/InputStream;

    invoke-static {v4, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 135
    iget-object v4, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object v4, v4, Lcom/metamoji/ui/common/UiAsyncImageView;->m_iStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 137
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 138
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 139
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    iget-object v2, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object v2, v2, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget-object v2, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object v2, v2, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    div-int/2addr v4, v2

    .line 141
    iget-object v2, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object v2, v2, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v3

    iget-object v2, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object v2, v2, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    div-int/2addr v5, v2

    .line 143
    iget-object v2, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/ui/common/UiAsyncImageView;->m_iStream:Ljava/io/InputStream;

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 145
    iget-object v1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiAsyncImageView;->m_iStream:Ljava/io/InputStream;

    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiAsyncImageView;->abort()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiAsyncImageView;->abort()V

    .line 151
    throw p1

    .line 150
    :catch_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->abort()V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 117
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    iget-object v0, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiAsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 185
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_3

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 193
    iget-object v3, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    if-lt v2, p1, :cond_1

    .line 189
    iget-object p1, v3, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    iget p1, p1, Lcom/metamoji/cm/Size;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object p1, p1, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    iget p1, p1, Lcom/metamoji/cm/Size;->height:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, v3, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    iget p1, p1, Lcom/metamoji/cm/Size;->width:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 194
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iget-object p1, p1, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    iget p1, p1, Lcom/metamoji/cm/Size;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 197
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiAsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const/16 p1, 0xa

    .line 203
    invoke-virtual {v0, p1, p1, p1, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setPadding(IIII)V

    .line 206
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    .line 209
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiAsyncImageView;->setVisibility(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 117
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
