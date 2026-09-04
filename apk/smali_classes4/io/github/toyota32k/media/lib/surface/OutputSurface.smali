.class public Lio/github/toyota32k/media/lib/surface/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputSurface"

.field private static final VERBOSE:Z = false


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 45
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 46
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 70
    invoke-direct {p0, p0}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->setup(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 45
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 46
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 61
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->eglSetup(II)V

    .line 62
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->makeCurrent()V

    .line 63
    invoke-direct {p0, p0}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->setup(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 45
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 46
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 73
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->setup(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 277
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 278
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": EGL error: 0x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private eglSetup(II)V
    .locals 13

    const/4 v0, 0x0

    .line 106
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 107
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    .line 110
    new-array v2, v1, [I

    .line 111
    iget-object v3, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    .line 117
    new-array v6, v2, [I

    fill-array-data v6, :array_0

    const/4 v10, 0x1

    .line 125
    new-array v8, v10, [Landroid/opengl/EGLConfig;

    .line 126
    new-array v11, v4, [I

    .line 127
    iget-object v5, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3098

    const/16 v3, 0x3038

    .line 132
    filled-new-array {v2, v1, v3}, [I

    move-result-object v1

    .line 136
    iget-object v2, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v8, v0

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v4, v5, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 138
    const-string v1, "eglCreateContext"

    invoke-direct {p0, v1}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_1

    const/16 v1, 0x3057

    const/16 v2, 0x3056

    .line 144
    filled-new-array {v1, p1, v2, p2, v3}, [I

    move-result-object p1

    .line 149
    iget-object p2, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v8, v0

    invoke-static {p2, v1, p1, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 150
    const-string p1, "eglCreatePbufferSurface"

    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 113
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data
.end method

.method private setup(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 2

    .line 80
    new-instance v0, Lio/github/toyota32k/media/lib/surface/TextureRender;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/surface/TextureRender;-><init>()V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;

    .line 81
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/surface/TextureRender;->surfaceCreated()V

    .line 87
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/surface/TextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 99
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 100
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    .line 203
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 208
    :try_start_1
    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 209
    iget-boolean v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 215
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    .line 218
    iput-boolean v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameAvailable:Z

    .line 219
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/surface/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_0
    move-exception v1

    .line 219
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/surface/TextureRender;->changeFragmentShader(Ljava/lang/String;)V

    return-void
.end method

.method public checkForNewImage(I)Z
    .locals 5

    .line 230
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 235
    :try_start_1
    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 236
    iget-boolean v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameAvailable:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 237
    :try_start_2
    monitor-exit v0

    return v2

    :catch_0
    move-exception p1

    .line 241
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 244
    :cond_1
    iput-boolean v2, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameAvailable:Z

    .line 245
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    iget-object p1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;

    const-string v0, "before updateTexImage"

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/surface/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 245
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public drawImage()V
    .locals 2

    .line 255
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/surface/TextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 188
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public latchImage()V
    .locals 2

    .line 258
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/surface/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method

.method public makeCurrent()V
    .locals 3

    .line 180
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 264
    iget-object p1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameAvailable:Z

    .line 269
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 270
    monitor-exit p1

    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 270
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .line 159
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 161
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 162
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 163
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 165
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 169
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 170
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 171
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mTextureRender:Lio/github/toyota32k/media/lib/surface/TextureRender;

    .line 173
    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 174
    iput-object v0, p0, Lio/github/toyota32k/media/lib/surface/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method
